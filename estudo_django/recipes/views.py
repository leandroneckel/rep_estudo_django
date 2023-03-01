from django.shortcuts import render
from django.http import HttpResponse

def my_view(request):
    return render(
        request,
        'recipes/pages/home.html',
        context={
            'name':'Leandro Neckel'
        }
        )