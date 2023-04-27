# cv

This project generates daily versions of my cv/resume based on data stored
in [sabedoria](https://github.com/droposhado/sabedoria), pdf files are sent
to Dropbox, simple way to view in desktop or mobile.

## Considerations

- To use `#`, you need scape `\#`
- To `\cventry`, you need a blank line after, to generate correct space in pdf
- To generate long lived token, i use [this script](https://github.com/dropbox/dropbox-sdk-python/blob/main/example/oauth/commandline-oauth.py), printing `oauth_result.access_token`

## References

- [Package babel Error: Unknow option 'brazilian'](https://tex.stackexchange.com/a/121245)
- [LaTeX e acentos em português](https://aleteia.wordpress.com/2008/07/30/latex_e_acentos/)
- [https://github.com/harshjv/travis-ci-latex-pdf](https://github.com/harshjv/travis-ci-latex-pdf)
- [Pacotes – ou packages. O comando \usepackage](https://aprendolatex.wordpress.com/2007/03/17/pacotes-ou-packages-o-comando-usepackage/)

## LICENSE

Latex comments are `%`, to use the mako templates that have
their trigger `%`, it was necessary to remove the comments and this cv
is based on the [themagicalmammal/Resume](https://github.com/themagicalmammal/Resume)
template and license is the same, [LICENSE](LICENSE) file.
