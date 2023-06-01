# import numpy as np
# import cv2
# from matplotlib import pyplot as plt

# def sobelOperator(img):
#     container = np.copy(img)
#     size = container.shape
#     for i in range(1, size[0] - 1):
#         for j in range(1, size[1] - 1):
#             gx = (img[i - 1][j - 1] + 2*img[i][j - 1] + img[i + 1][j - 1]) - (img[i - 1][j + 1] + 2*img[i][j + 1] + img[i + 1][j + 1])
#             gy = (img[i - 1][j - 1] + 2*img[i - 1][j] + img[i - 1][j + 1]) - (img[i + 1][j - 1] + 2*img[i + 1][j] + img[i + 1][j + 1])
#             container[i][j] = min(255, np.sqrt(gx**2 + gy**2))
#     return container
#     pass

# img = cv2.cvtColor(cv2.imread("tubuh1.jpg"), cv2.COLOR_BGR2GRAY)
# img = sobelOperator(img)
# img = cv2.cvtColor(img, cv2.COLOR_GRAY2RGB)
# plt.imshow(img)
# plt.show()

from pythermalcomfort.models import pmv_ppd
from pythermalcomfort.utilities import v_relative, clo_dynamic
tdb = 25
tr = 25
rh = 50
v = 0.1
met = 1.4
clo = 0.5
# calculate relative air speed
v_r = v_relative(v=v, met=met)
# calculate dynamic clothing
clo_d = clo_dynamic(clo=clo, met=met)
results = pmv_ppd(tdb=tdb, tr=tr, vr=v_r, rh=rh, met=met, clo=clo_d)
print(results)
{'pmv': 0.06, 'ppd': 5.1}
print(results['pmv'])
-0.06
# you can also pass an array-like of inputs
results = pmv_ppd(tdb=[22, 25], tr=tr, vr=v_r, rh=rh, met=met, clo=clo_d)
print(results)
# {'pmv': array([-0.47,  0.06]), 'ppd': array([9.6, 5.1])}