# Pipeline Templates - Testing

Test/staging repo for pipelines in my [PipelineTemplates repository](https://github.com/redjax/PipelineTemplates.git).

## Trigger Github pipelines with the gh CLI

The [Github CLI](https://cli.github.com/) can trigger pipelines using commands run locally. This can be especially useful for testing pipelines, where you can trigger a pipeline on a specific branch, even if it hasn't been merged into the main branch yet.

For example, trigger the [`test-hugo-site.yml` pipeline](./.github/workflows/test-hugo-site.yml) on the `feat/test-hugo-pipelines` branch

```shell
gh workflow run .github/workflows/test-hugo-site.yml --ref feat/test-hugo-pipelines -f manual-release=true
```

Give it the path to the Action or workflow, a branch with `--ref`, and input(s) with `-f input-name=value`.
