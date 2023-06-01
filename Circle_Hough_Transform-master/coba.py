import numpy as np
from PIL import Image
import matplotlib.pyplot as plt
import cv2
import sys

img = cv2.imread('Kepala 3_Adam.jpeg')
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
blur = cv2.GaussianBlur(gray,(5,5), cv2.BORDER_DEFAULT)

sobelx = cv2.Sobel(blur, cv2.CV_64F, 1, 0, ksize=5)
sobely = cv2.Sobel(blur, cv2.CV_64F, 0, 1, ksize=5)

cv2.imshow('Original', img)
cv2.waitKey(0)

cv2.imshow('Grey Scale', gray)
cv2.waitKey(0)

cv2.imshow('Gaussian Blur', blur)
cv2.waitKey(0)

cv2.imshow('Sobel X', sobelx)
cv2.waitKey(0)

cv2.imshow('Sobel Y', sobely)
cv2.waitKey(0)

OP = cv2.bitwise_or(sobelx, sobely)
cv2.imshow('Sobel Operation', OP)
cv2.waitKey(0)

save = cv2.imwrite('savecoba.jpg', OP)
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
