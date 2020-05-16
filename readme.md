PHP Code sniffer Github action
=
This action runs phpcs with Supercraft ruleset with github action

Usage
-

Add this code to `.github/workflows/main.yml` file.

    name: PHPCS check
      on: push/pull_request

      jobs:
        phpcs:
          name: PHPCS
          runs-on: ubuntu-latest
          steps:
            - uses: actions/checkout@v2
            - name: PHPCS check
              uses: supercraftshop/github-actions@master 

By default php_cs checks the code in `modules` directory.
You can pass a set of your own directories using `paths` input

    - name: PHPCS check
      uses: supercraftshop/github-actions@master
      with:
        paths: './modules ./plugins ./any_other_dir

        

          
    
