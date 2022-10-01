from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Mouses
from .forms import MouseForm

# Create your views here.
def inicio(request):
    return render(request, 'paginas/inicio.html')
def nosotros(request):
    return render(request, 'paginas/nostros.html')

def libros(request):
    libros = Mouses.objects.all()
    return render(request, 'libros/index.html', {'libros': libros}) 

def crear(request):
    formulario = MouseForm(request.POST or None, request.FILES or None)
    if formulario==True:
        formulario.save()
        return redirect('libros')
    return render(request, 'libros/crear.html', {'formulario': formulario})

def editar(request):
    return render(request, 'libros/editar.html')
