from django import forms
from .models import Product,Shop

class ProductForm(forms.ModelForm):
    class Meta:
        model = Product
        fields = ('product_name', 'price', 'discount')

class ProductSearchForm(forms.Form):
    product_column = forms.CharField(max_length=222)
    keyword_product = forms.CharField(max_length=222)

class ProductForm(forms.ModelForm):
    class Meta:
        model = Product
        fields = ('image', 'product_name', 'price', 'discount') # ‘Image’ is added.

class SignupForms(forms.ModelForm):
    class Meta:
        model = Shop
        fields = ('shop_name', 'contact', 'location', 'category', 'contact_person', 'branded', 'email', 'password', 'password2')

