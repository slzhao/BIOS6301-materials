# BIOS6301 student materials

The online course site is for reading. This repository provides the corresponding
Quarto source, R code, synthetic data, and lab starters.

After cloning, open `BIOS6301-materials.Rproj` so that RStudio uses the repository
root as the working context.

## Create your private course repository

Clone the instructor-managed materials while preserving their Git history:

```bash
git clone COURSE_REPOSITORY_URL BIOS6301-mywork
cd BIOS6301-mywork
git remote rename origin upstream
```

Create an empty private GitHub repository. Do not initialize it with a README,
`.gitignore`, or license. Then connect and push:

```bash
git remote add origin YOUR_PRIVATE_REPOSITORY_URL
git push -u origin main
git remote -v
```

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
