from django.http.response import HttpResponse
from django.shortcuts import render
from products.models import Product

# Create your views here.
def homepage_view(request):

    obj = Product.objects.all
    
    my_context = {
        "list":obj
    }
    return render(request , "home.html" , my_context )


