from django.shortcuts import render
from django.views.generic import ListView, DetailView, View
# Create your views here.


class HomeView(ListView):
    #model = Item
    #paginate_by = 10
    template_name = "home.html"
