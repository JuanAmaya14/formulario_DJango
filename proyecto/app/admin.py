from django.contrib import admin
from .models import post

class postAdmin (admin.ModelAdmin):
    list_display = ["Nombre", "Pais", "gusta_hacer", "si_o_no", "fecha_post"]

admin.site.register(post, postAdmin)


# Register your models here.
