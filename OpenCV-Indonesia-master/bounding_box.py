import cv2
import numpy as np
import PIL
from PIL import Image

img = cv2.imread('Tubuh1_Alisa.jpeg', cv2.IMREAD_UNCHANGED)
 
print('Original Dimensions : ',img.shape)
 
scale_percent = 60 # percent of original size
width = int(img.shape[1] * scale_percent / 100)
height = int(img.shape[0] * scale_percent / 100)
dim = (width, height)
 
# resize image
resized = cv2.resize(img, dim, interpolation = cv2.INTER_AREA)

print('Resized Dimensions : ',resized.shape)
 
cv2.imshow("Resized image", resized)

face_csc = cv2.CascadeClassifier('haarcascade_fullbody.xml')
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
faces = face_csc.detectMultiScale(gray, 1.1, 4)

for (x,y,w,h) in faces:
    cv2.rectangle(img, (x,y), (x+w, y+h), (0,255,0), 3)

cv2.imshow('img', img)
cv2.waitKey(0)
