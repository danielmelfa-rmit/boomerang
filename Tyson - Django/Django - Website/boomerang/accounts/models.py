from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save

# Create your models here.
class UserProfile(models.Model):
    user = models.OneToOneField(User, models.CASCADE)
    description = models.CharField(max_length=100, default='')
    address = models.CharField(max_length=100, default='')
    city = models.CharField(max_length=100, default='')
    postcode = models.IntegerField(default=0)
    state = models.CharField(max_length=100, default='')
    #website = models.URLField(default='')
    phone = models.IntegerField(default=0)

def create_profile(sender, **kwargs):
    if kwargs['created']:
        user_profile = UserProfile.objects.create(user=kwargs['instance'])

post_save.connect(create_profile, sender=User)

#class items(models.Model)
    #user = models.OneToOneField(User, models.CASCADE)
    #itemName = models.CharField(max_length=100, default='')
    #description = models.CharField(max_length=255, default='')
    #itemPrice = models.DoubleField(default=0.00)
    #dateAdded =
    #itemStatus =
