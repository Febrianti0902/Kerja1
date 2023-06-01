import numpy as np
from PIL import Image
import matplotlib.pyplot as plt
import cv2
import sys
def sobelOperator(blur):
    container = np.copy(blur)
    size = container.shape
    for i in range(1, size[0] - 1):
        for j in range(1, size[1] - 1):
            gx = (blur[i - 1][j - 1] + 2*blur[i][j - 1] + blur[i + 1][j - 1]) - (blur[i - 1][j + 1] + 2*blur[i][j + 1] + blur[i + 1][j + 1])
            gy = (blur[i - 1][j - 1] + 2*blur[i - 1][j] + blur[i - 1][j + 1]) - (blur[i + 1][j - 1] + 2*blur[i + 1][j] + blur[i + 1][j + 1])
            container[i][j] = min(255, np.sqrt(gx**2 + gy**2))
    return container
    pass

img = cv2.imread('tubuh1.jpg')
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
blur = cv2.GaussianBlur(gray,(5,5), cv2.BORDER_DEFAULT)

#sobelx = cv2.Sobel(blur, cv2.CV_64F, 1, 0, ksize=5)
#sobely = cv2.Sobel(blur, cv2.CV_64F, 0, 1, ksize=5)

cv2.imshow('Original', img)
cv2.waitKey(0)

cv2.imshow('Grey Scale', gray)
cv2.waitKey(0)

cv2.imshow('Gaussian Blur', blur)
cv2.waitKey(0)

#cv2.imshow('Sobel X', sobelx)
#cv2.waitKey(0)

#cv2.imshow('Sobel Y', sobely)
#cv2.waitKey(0)

#OP = cv2.bitwise_or(sobelx, sobely)
plt.imshow(sobelOperator)
cv2.waitKey(0)

save = cv2.imwrite('savetubuh.jpg', sobelOperator)
print("Image written to file system : ", save)
