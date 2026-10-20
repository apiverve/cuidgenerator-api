from setuptools import setup, find_packages

setup(
    name='apiverve_cuidgenerator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Cuid Generator creates collision-resistant unique identifiers (CUIDs) on demand for distributed applications. Pass an optional count to receive an array of unique ID strings, with paid plans adding structural format and sortability details.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/cuidgenerator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
