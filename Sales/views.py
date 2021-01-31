from django.shortcuts import render,redirect
from .forms import ProductForm,ProductSearchForm
from django.contrib import auth
from .models import Product
# Create your views here.
def log(request):
    return render(request, 'Sales/login.html')

def login_view(request):
        username = request.POST['username']
        print(username)
        password = request.POST['password']
        print(password)
        try:
            user = auth.authenticate(username=username, password=password)
            if user is not None:
                auth.login(request, user)
                return redirect('success')
            else:
                return redirect('sorry')
        except auth.ObjectDoesNotExist:
            print("invalid user")
            return render(request, 'Sales/login.html')


def logout(request):
    auth.logout(request)  # destroys the user session.
    return render(request, 'Sales/login.html')


def product(request):
    if request.method == "POST":  # Checks the method as post.
        form = ProductForm(request.POST)  # Extracts data from HTML form
        if form.is_valid():  # checks the validity
            try:
                form.save()
                # if valid save the data into database
                return redirect('productshow')  # redirects to list of table
            except:
                pass
    else:
        form = ProductForm()  # Executed before the form is submitted.
    return render(request, 'Sales/product_new.html', {'form': form})


def productshow(request):
    products = Product.objects.all()  # SENDS ALL THE OBJECT FROM TABLE
    return render(request, 'Sales/product_list.html', {'products': products})


def search_product(request):
    if request.method == "POST":
        if request.POST['keyword_product']:
            form = ProductSearchForm(request.POST)
            if form.is_valid():
                key = form.cleaned_data['keyword_product']
                print(key)
                v = form.cleaned_data['product_column']
                if v == 'item':
                    comp = Product.objects.filter(product_name__icontains=key)
                elif v == 'price':
                    comp = Product.objects.filter(price__exact=key)
                elif v == 'discount':
                    comp = Product.objects.filter(discount__exact=key)
            co = comp.count()
            context = {'products': comp, 'count': co}
            return render(request,
                          'Sales/product_list.html', context)
            return redirect('productshow')


def productedit(request, id):
    product = Product.objects.get(id=id)  # select * from table_name where id =1
    return render(request, 'Sales/product_edit.html', {'product': product})


def productupdate(request,id):
    product = Product.objects.get(id=id)
    form = ProductForm(request.POST, instance=product)
    if form.is_valid():
        form.save()
    product = Product.objects.all()
    return render(request, 'Sales/product_list.html', {'products': product})


def productdestroy(request, id):
    product = Product.objects.get(id=id)
    product.delete()
    return redirect('productshow')

def shop_sign(request):
    return render(request, 'Sales/shop_sign_up.html')

