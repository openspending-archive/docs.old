Help, Documentation and Content for OpenSpending
================================================

This repository keeps content which is intended to be shown inside the OpenSpending 
platform and which is not automatically generated (i.e. not part of a dataset). We 
use Sphinx to generate static HTML pages for such content.

We're happy for any issues, pull requests and other comments on this.

Creating an environment
-----------------------

1. Go into copy of repository
2. `virtualenv env`
3. `source env/bin/activate`
4. `pip install sphinx`

Updating the preview
--------------------

1. Go into copy of repository
2. `source env/bin/activate`
3. `make static` - run this command every time you want to generate a preview
