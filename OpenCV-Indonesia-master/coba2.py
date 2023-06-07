import cv2
import numpy as np
from PIL import Image
import matplotlib.pyplot as plt
import sys
#from google.colab.patches import cv2_imshow

# Image Processing
kernel = np.ones((5, 5), np.uint8)
image = cv2.imread('Depan19.jpeg')
image_gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
image_blurred = cv2.GaussianBlur(image_gray, (9, 9), 0)
edges = cv2.Canny(image_blurred, 30, 150)
dilation = cv2.dilate(edges, kernel, iterations = 1)
image_contours, _ = cv2.findContours(dilation, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
image_contours_sorted = sorted(image_contours, key=cv2.contourArea)
contours_poly = cv2.approxPolyDP(image_contours_sorted[-1], 3, True)
boundrect = cv2.boundingRect(contours_poly)
dpi = 96
scale = 0.2
cv2.rectangle(image, (int(boundrect[0]), int(boundrect[1])), (int(boundrect[0]+boundrect[2]), int(boundrect[1]+boundrect[3])), (0,255,0), 2)
a = boundrect[2]  * scale
t = boundrect[3]  * scale

print ("a:", a)
print ("t:", t)

# Display the image
cv2.imshow('Sorted Contours', image)
cv2.waitKey(0)
cv2.destroyAllWindows()