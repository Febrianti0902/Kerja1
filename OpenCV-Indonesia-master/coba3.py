import cv2
import numpy as np
from PIL import Image
import matplotlib.pyplot as plt
import sys
#from google.colab.patches import cv2_imshow

img = cv2.imread('Depan9.jpeg')
res = cv2.resize(img, None, fx=1,fy=1,interpolation = cv2.INTER_AREA)
gray = cv2.cvtColor(res, cv2.COLOR_BGR2GRAY)
blur = cv2.GaussianBlur(gray,(5,5), cv2.BORDER_DEFAULT)

sobelx = cv2.Sobel(blur, cv2.CV_64F, 1, 0, ksize=5)
sobely = cv2.Sobel(blur, cv2.CV_64F, 0, 1, ksize=5)
sobel = cv2.bitwise_or(sobelx, sobely)
cv2.imshow('Sobel Operation', sobel)
cv2.waitKey(0)

save = cv2.imwrite('savecoba.jpg', sobel)
print("Image written to file system : ", save)
img = cv2.imread('savecoba.jpg')
gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
blur = cv2.GaussianBlur(gray, (3,3), 0)

#Gambar kedua
img2 = cv2.imread('Samping9.jpeg')
res2 = cv2.resize(img2, None, fx=1,fy=1,interpolation = cv2.INTER_AREA)
gray2 = cv2.cvtColor(res2, cv2.COLOR_BGR2GRAY)
blur2 = cv2.GaussianBlur(gray2,(5,5), cv2.BORDER_DEFAULT)

sobelx2 = cv2.Sobel(blur2, cv2.CV_64F, 1, 0, ksize=5)
sobely2 = cv2.Sobel(blur2, cv2.CV_64F, 0, 1, ksize=5)
OP2 = cv2.bitwise_or(sobelx2, sobely2)
cv2.imshow('Sobel Operation', OP2)
cv2.waitKey(0)

# save2 = cv2.imwrite('savecoba.jpg', OP2)
# print("Image2 written to file system : ", save2)


# #PROCESSING IMAGE 2
# img2 = cv2.imread('savecoba2.jpg')
# #output = img.copy()
# #Convert image to Grayscale
# gray2 = cv2.cvtColor(img2,cv2.COLOR_BGR2GRAY)
# #Blur image
# blur2 = cv2.GaussianBlur(gray2, (9,9), 0)

# Image Processing
kernel = np.ones((5, 5), np.uint8)
_, thresholded = cv2.threshold(blur, 15, 255, cv2.THRESH_BINARY)
dilation = cv2.dilate(thresholded, kernel, iterations = 1)
image_contours, _ = cv2.findContours(dilation, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
image_contours_sorted = sorted(image_contours, key=cv2.contourArea)
contours_poly = cv2.approxPolyDP(image_contours_sorted[-1], 3, True)
boundrect = cv2.boundingRect(contours_poly)
dpi = 96
scale = 0.026458333333333
const = 3.3
cv2.rectangle(img, (int(boundrect[0]), int(boundrect[1])), (int(boundrect[0]+boundrect[2]), int(boundrect[1]+boundrect[3])), (0,255,0), 2)
a = boundrect[2]  * scale * const
t = boundrect[3]  * scale * const

print ("a:", a)
print ("t:", t)

# Display the image
cv2.imshow('Sorted Contours', img)
cv2.waitKey(0)
cv2.destroyAllWindows()
