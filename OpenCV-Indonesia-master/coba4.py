#Import
import cloudinary
import cloudinary.uploader
import cloudinary.api
from cloudinary.uploader import upload
from cloudinary.utils import cloudinary_url


#Config
cloudinary.config(
  cloud_name = "dmdz0jl9u",
  api_key = "331757326341744",
  api_secret = "Q2PiH_GA20dJJFopQLCKrVcwX5E",
  secure = True
)

#Upload
upload("https://upload.wikimedia.org/wikipedia/commons/a/ae/Olympic_flag.jpg", public_id="olympic_flag")

#Transform
url, options = cloudinary_url("olympic_flag", width=100, height=150, crop="fill")