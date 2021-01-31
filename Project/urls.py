"""Amazon URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from Sales import views
from . import settings
from django.contrib.staticfiles.urls import static
from django.urls import path
from django.views.generic import TemplateView

urlpatterns = [
    path('', TemplateView.as_view(template_name='Sales/home.html')),
    path('log/', views.log, name='login'),
    path('login/', views.login_view, name='login_view'),
    path('logout/', views.logout, name='logout'),
    path('shopsignup/', views.shop_sign, name='shop_sign'),

    # PRODUCT CRUD OPERATION
    path('product/', views.product, name='product'),  # CREATE
    path('productshow/', views.productshow, name='productshow'),  # LIST
    path('search_product/', views.search_product, name='search_product'),
    path('productedit/<int:id>', views.productedit, name='productedit'),  # EDIT PAGE DISPLAY
    path('productupdate/<int:id>', views.productupdate, name='productupdate'),  # DISPLAYED PAGE EDITED
    path('productdestroy/<int:id>', views.productdestroy, name='productdestroy'),  # DELETE

]+static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

