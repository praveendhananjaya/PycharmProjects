from django.shortcuts import render

# Create your views here.
def product_detail_view(request):

    return render(request, "product_page.html")
