import pip
installed_packages = pip.get_installed_distributions()
for package in installed_packages:
    print(package)
