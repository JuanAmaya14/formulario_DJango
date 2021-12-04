from django.shortcuts import redirect, render

from .models import post

from .forms import PostForm

def index(request):

    posts = post.objects.all()

    context = {

        'posts':posts

    }
    return render(request, 'index.html', context)



def form (request):
    if request.method == 'GET':
        form = PostForm()
        contexto = {
            'form':form
        }
    else:
        form = PostForm(request.POST)
        contexto = {
            'form':form
        }
        if form.is_valid():
            form.save()
            return redirect('index')

    return render(request, 'form.html',contexto)