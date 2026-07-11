# Example Hugo Site

This is a very simple static site build with [Hugo](https://gohugo.io). It is designed to test the [`hugo-site-main.yml` pipeline](https://github.com/redjax/PipelineTemplates/tree/main/.github/workflows/hugo-site-main.yml).

The site is nested in a subdirectory, as opposed to at the repository root, to demonstrate the pipeline's ability to build and release nested sites. It is versioned with [`bump-my-version`](https://github.com/callowayproject/bump-my-version) in order to test the pipeline's version bumping flow, and it releases to this repository's Github Pages and Cloudflare Pages to test the pipeline's publishing steps.
