# BIOS6301 student materials

## Start here: online course site

### [Open the BIOS6301 online course site](https://slzhao.github.io/BIOS6301-materials/)

The website is the **primary source for course reading**. This GitHub repository
provides the corresponding Quarto source, R code, synthetic data, and lab
starters.

After cloning, open `BIOS6301-materials.Rproj` so that RStudio uses the repository
root as the working context.

## Create your private course repository

This course uses **HTTPS with browser-based GitHub authentication**. GitHub does
not accept an account password for Git pushes. Current Git for Windows includes
Git Credential Manager, which opens a browser at the first authenticated push
and stores the resulting credential securely. See the
[before-Session-2 setup](course/session02/preclass.qmd) for macOS and Linux
instructions.

Clone the instructor-managed materials while preserving their Git history:

```bash
git clone https://github.com/slzhao/BIOS6301-materials.git BIOS6301-mywork
cd BIOS6301-mywork
git remote rename origin upstream
```

Create an [empty private GitHub repository](https://github.com/new?name=BIOS6301-mywork&visibility=private).
Do not initialize it with a README, `.gitignore`, or license.

![GitHub's new-repository form with the repository-name field highlighted](images/github-create-repository-official.png)

*GitHub's repository-name field. The appearance may change slightly over time.
Image source: [GitHub Docs](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-new-repository).*

Before clicking **Create repository**, verify:

- **Visibility:** Private
- **Add README:** Off
- **Add `.gitignore`:** None
- **Choose a license:** None

Then connect and push:

```bash
git remote add origin https://github.com/YOUR_GITHUB_USERNAME/BIOS6301-mywork.git
git push -u origin main
git remote -v
```

The first push may open a GitHub browser sign-in. Complete the sign-in and any
two-factor authentication there. If a terminal asks for a GitHub password,
cancel the prompt: an ordinary GitHub account password will not work for Git.

`upstream` should point to `BIOS6301-materials`; `origin` should point to your
private repository.

## Ownership rule

- Do not edit tracked files under `course/`.
- Copy starters into `work/` and edit the copies.
- Commit before merging course updates.

## Update materials

```bash
git status
git fetch upstream
git merge upstream/main
git push origin main
```

If Git reports a conflict, stop and preserve all files before attempting a repair.
