Twig Code sniffer Github action
=
This action runs twigcs with github action

Usage
-

Add this code to `.github/workflows/main.yml` file.

    name: TWIGCS check
      on: push/pull_request

      jobs:
        twigcs:
          name: TWIGCS
          runs-on: ubuntu-latest
          steps:
            - uses: actions/checkout@v2
            - name: TWIGCS check
              uses: supercraftshop/github-actions-twig@master

By default twigcs checks the code in `templates` directory.
You can pass a set of your own directories using `paths` input

    - name: TWIGCS check
      uses: supercraftshop/github-actions-twig@master
      with:
        paths: './modules ./plugins ./any_other_dir

        

          
    
