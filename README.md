# pgRouting - Documentation

## Publish on GH-Pages

pgRouting documentation is hosted on [GitHub Pages](http://pages.github.com) with custom domain settings.

The following steps are needed to update the documentation:

1. Build documentation with CMake for example in `develop` branch
2. Checkout `gh-pages` branch
3. Copy the documentation from the `build` directory into a directory in root (ie. `dev`)
4. Update `index.html` if required, ie. paths. 
6. Copy PDF file into version root directory.
7. Copy compressed MAN page into version root directory.
8. Commit and push the changes

The `index.html` documentation landing page needs to be edited manually. 
It uses Sphinx template styles, but it is not generated automatically.


# for user's documentation

```
rm -Rf 3.2 
cp -r build/doc/html 3.2 
git add 3.2
```

# for developers documentation

Only for main branch documentation

``` 
rm -rf doxygen
cp -r build/doxygen/html doxygen
git add doxygen
```

# for the pdf

    cp build/latex/pgRoutingDocumentation.pdf dev/
    gzip -c build/man/pgrouting.7 > dev/pgrouting.7.gz
     
    git add dev && cp build/index.html .

# commit with appropiate message
    git commit -m "updated to develop documentation commit  8917c83"
    git push origin gh-pages
