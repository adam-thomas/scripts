### make_superuser.py
# Used to quickly generate a superuser with relevant data for a project.
# Run with `python manage.py shell < make_superuser.py`

from users.tests.factories import UserFactory
a = UserFactory.create(name='admin', email='admin@incuna.com', is_staff=True, is_superuser=True)
a.set_password('admin')
a.save()
exit()
