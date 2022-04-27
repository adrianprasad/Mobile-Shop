from mobileapp.forms import LoginForm, PasswordChangeForm, PasswordResetForm, SetPasswordForm
from django.urls import path
from . import views
from django.contrib.auth import views as auth_views


app_name = 'store'


urlpatterns = [
    path('', views.home, name="home"),
    path('add-to-cart/', views.add_to_cart, name="add-to-cart"),
    path('remove-cart/<int:cart_id>/', views.remove_cart, name="remove-cart"),
    path('plus-cart/<int:cart_id>/', views.plus_cart, name="plus-cart"),
    path('minus-cart/<int:cart_id>/', views.minus_cart, name="minus-cart"),
    path('cart/', views.cart, name="cart"),
    path('checkout/', views.checkout, name="checkout"),
    path('product/<slug:slug>/', views.detail, name="product-detail"),
    path('categories/', views.all_categories, name="all-categories"),
    path('<slug:slug>/', views.category_products, name="category-products"),
    path('showpage',views.showpage,name='showpage'),
    path('shop/', views.shop, name="shop"),
    path('accounts/register/', views.RegistrationView.as_view(), name="register"),
    path('accounts/login/', auth_views.LoginView.as_view(template_name='account/login.html', authentication_form=LoginForm), name="login"),
    path('accounts/profile/', views.profile, name="profile"),
    path('accounts/add-address/', views.AddressView.as_view(), name="add-address"),
    path('accounts/remove-address/<int:id>/', views.remove_address, name="remove-address"),
    path('accounts/logout/', auth_views.LogoutView.as_view(next_page='store:login'), name="logout"),
    path('accounts/password-change/', auth_views.PasswordChangeView.as_view(template_name='account/password_change.html', form_class=PasswordChangeForm, success_url='/accounts/password-change-done/'), name="password-change"),
    path('accounts/password-change-done/', auth_views.PasswordChangeDoneView.as_view(template_name='account/password_change_done.html'), name="password-change-done"),
    path('product/test/', views.test, name="test"),
    path('admin',views.admin,name='admin'),
    path('addcat',views.addcat,name='addcat'),
    path('/addpro/',views.addpro,name='addpro'),
    path('/deleteproduct//<int:pk/',views.deleteproduct,name='deleteproduct'),
    path('edit/<int:pk/',views.edit,name='edit'),
    path('edit_pro/<int:pk/',views.edit_pro,name='edit_pro'),
    
]   