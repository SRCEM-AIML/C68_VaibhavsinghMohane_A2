from django.shortcuts import render

def home(request):
    return render(request, 'home.html')

def recipe_list(request):
    return render(request, 'recipe_list.html')

def recipe_detail(request):
    return render(request, 'recipe_detail.html')
