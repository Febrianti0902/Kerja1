import cv2
import numpy as np
from PIL import Image
import matplotlib.pyplot as plt
import sys
#from google.colab.patches import cv2_imshow

# Image Processing Gambar 1
kernel = np.ones((5, 5), np.uint8)
image = cv2.imread('Depan5.jpeg')
scale_percent = 60 # percent of original size
width = int(image.shape[1] * scale_percent / 100)
height = int(image.shape[0] * scale_percent / 100)
dim = (width, height)
resized = cv2.resize(image, dim, interpolation = cv2.INTER_AREA)
image_gray = cv2.cvtColor(resized, cv2.COLOR_BGR2GRAY)
image_blurred = cv2.GaussianBlur(image_gray, (9, 9), 0)

gradient_x = cv2.Sobel(image_blurred, cv2.CV_64F, 1, 0, ksize=3)
gradient_y = cv2.Sobel(image_blurred, cv2.CV_64F, 0, 1, ksize=3)
gradient_magnitude = np.sqrt(gradient_x * 2 + gradient_y * 2)
gradient_magnitude = cv2.normalize(gradient_magnitude, None, 0, 255, cv2.NORM_MINMAX, cv2.CV_8U)

_, thresholded = cv2.threshold(gradient_magnitude, 50, 255, cv2.THRESH_BINARY)
dilation = cv2.dilate(thresholded, kernel, iterations=1)
image_contours, _ = cv2.findContours(dilation, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
image_contours_sorted = sorted(image_contours, key=cv2.contourArea)
contours_poly = cv2.approxPolyDP(image_contours_sorted[-1], 3, True)
boundrect = cv2.boundingRect(contours_poly)
dpi = 96
scale = 0.026458333333333
const = 3.3
cv2.rectangle(resized, (int(boundrect[0]), int(boundrect[1])), (int(boundrect[0]+boundrect[2]), int(boundrect[1]+boundrect[3])), (0,255,0), 2)
a = round(boundrect[2]  * scale * const, 2)
t = round(boundrect[3]  * scale * const, 2)

#Image Processing Gambar 2
image2 = cv2.imread('Samping5.jpeg')
width2 = int(image2.shape[1] * scale_percent / 100)
height2 = int(image2.shape[0] * scale_percent / 100)
dim2 = (width2, height2)
resized2 = cv2.resize(image2, dim, interpolation = cv2.INTER_AREA)
image_gray2 = cv2.cvtColor(resized2, cv2.COLOR_BGR2GRAY)
image_blurred2 = cv2.GaussianBlur(image_gray2, (9, 9), 0)

gradient_x2 = cv2.Sobel(image_blurred2, cv2.CV_64F, 1, 0, ksize=3)
gradient_y2 = cv2.Sobel(image_blurred2, cv2.CV_64F, 0, 1, ksize=3)
gradient_magnitude2 = np.sqrt(gradient_x2 * 2 + gradient_y2 * 2)
gradient_magnitude2 = cv2.normalize(gradient_magnitude2, None, 0, 255, cv2.NORM_MINMAX, cv2.CV_8U)

_, thresholded2 = cv2.threshold(gradient_magnitude2, 50, 255, cv2.THRESH_BINARY)
dilation2 = cv2.dilate(thresholded2, kernel, iterations=1)
image_contours2, _ = cv2.findContours(dilation2, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
image_contours_sorted2 = sorted(image_contours2, key=cv2.contourArea)
contours_poly2 = cv2.approxPolyDP(image_contours_sorted2[-1], 3, True)
boundrect2 = cv2.boundingRect(contours_poly2)
cv2.rectangle(resized2, (int(boundrect2[0]), int(boundrect2[1])), (int(boundrect2[0]+boundrect2[2]), int(boundrect2[1]+boundrect2[3])), (0,255,0), 2)
b = round(boundrect2[2]  * scale * const, 2)

print ("a:", a, "cm")
print ("b:", b, "cm")
print ("t:", t, "cm")

#Perhitungan BSA
k = 0.58
phi = 3.14
BSA = round(((phi/2)*((a*b)+((a+b)*t))*k*0.0001), 2)
BB_Sistem = round(((BSA*BSA) * 3600)/t, 2)

print ("BSA:", BSA, "m")
print ("BB Sistem:", BB_Sistem, "kg")
print ("Tinggi:", t, "cm")

# Display the image
cv2.imshow('Sorted Contours', resized)
cv2.waitKey(0)
cv2.imshow('Sorted Contours', resized2)
cv2.waitKey(0)
cv2.destroyAllWindows()

img = cv2.imread('Kepala 3_Adam.jpeg')
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
blur = cv2.GaussianBlur(gray,(5,5), cv2.BORDER_DEFAULT)

sobelx = cv2.Sobel(blur, cv2.CV_64F, 1, 0, ksize=5)
sobely = cv2.Sobel(blur, cv2.CV_64F, 0, 1, ksize=5)

sobel = cv2.bitwise_or(sobelx, sobely)
cv2.imshow('Sobel Operation', sobel)
cv2.waitKey(0)

save = cv2.imwrite('savecoba.jpg', sobel)
print("Image written to file system : ", save)

#PROCESSING (TRANSFORMASI HOUGH = MENGUKUR LINGKAR KEPALA)
img = cv2.imread('savecoba.jpg')
#output = img.copy()
#Convert image to Grayscale
gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
#Blur image
gray = cv2.GaussianBlur(gray, (3,3), 0)

#detect circles
circles = cv2.HoughCircles(image=gray,
                            method=cv2.HOUGH_GRADIENT, 
                            dp=1.1, 
                            param1=100,
                            param2=18, 
                            minDist=1000, 
                            minRadius=0, 
                            maxRadius=0)

rcircles = np.uint16(np.around(circles))

if circles is not None:
    circles = np.round(circles[0, :]).astype("int")
    # print("Number of circles:", len(circles))

    # Count circles
    count=1 
    for (x, y, r) in circles:
        # Create outer circle
        cv2.circle(img, (x,y), r, (0, 0, 255), 3)
        # Create center rectangle
        cv2.rectangle(img, (x-2, y-2), (x+2, y+2), (0,255,0), -1)
        # Add radius to center
        cv2.putText(img, str(r), 
                    (x-15, y-5), 
                    cv2.FONT_HERSHEY_COMPLEX_SMALL, 
                    0.7, (0, 0, 0), 1)
        

cv2.waitKey(0)

#Print the radius of detected circles in pixels
print('c' + str(count) + ' ', '(pixel): '+ str(r))
count += 1
#Radius pixels to cm
px = 0.026458333333333
cm = r * px
print('Radius(cm): ',cm)

import math
#Head Circumference
pi = 3.14
circumference = 2 * pi * cm
print('Lingkar Kepala: ', (round(circumference,2)),'cm')
# return circumference

plt.show()

return jsonify(
                gambar1='https://picsum.photos/200/300',
                gambar2='https://picsum.photos/200/300',
                gambar3='https://picsum.photos/200/300',
                message="Berhasil dua",
                status="OK",
            )