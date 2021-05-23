from django.contrib import admin
from django.urls import path
# import from "views.py"
from helloWorld import views
urlpatterns = [
    path('admin/', admin.site.urls),
    # configure to the url
    path('',views.index, name="homepage")
]
