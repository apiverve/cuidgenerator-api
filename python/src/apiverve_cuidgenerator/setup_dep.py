from setuptools import setup, find_packages

setup(
    name='apiverve_cuidgenerator',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Cuid Generator is a tool for generating collision-resistant unique identifiers (Cuids). Cuids are optimized for horizontal scaling and sequential lookup performance in distributed systems.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/cuidgenerator?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
