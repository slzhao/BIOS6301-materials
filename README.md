# BIOS6301 student materials

## Start here: online course site

### [Open the BIOS6301 online course site](https://slzhao.github.io/BIOS6301-materials/)

The website is the **primary source for course reading**. This repository provides
the R code, synthetic data, and lab starters.

## Two separate repositories and RStudio projects

Keep these folders beside each other, never one inside the other:

```text
BIOS6301/
├── BIOS6301-materials/   course clone: read, copy, Pull
└── BIOS6301-mywork/      your private repository: edit, Commit, Push
    └── work/
        ├── session02-git-lab/
        └── homework01/
```

Your personal repository begins independently. It does not need course slides,
course history, or a remote connected to the instructor.

## 1. Clone the course materials

In RStudio, select **File → New Project → Version Control → Git**.

```text
Repository URL:     https://github.com/slzhao/BIOS6301-materials.git
Project directory:  BIOS6301-materials
```

![RStudio New Project Wizard](course/session02/images/rstudio-new-project-wizard.png)

Open the root `BIOS6301-materials.Rproj`. Leave the course files unchanged.
Before every class, open this project, check that its Git pane is empty, and
click **Pull**. Its `origin` points to the instructor's repository.

![RStudio project and Git controls](course/session02/images/rstudio-vcs-pane-labeled.png)

If this clone shows edits, preserve any work and ask the TA for help before
updating. Do not commit or push student work in this project.

## 2. Create your own private repository

Open [GitHub's new-repository page](https://github.com/new?name=BIOS6301-mywork&visibility=private).

![GitHub new-repository form](images/github-create-repository-official.png)

- Name: `BIOS6301-mywork`
- Visibility: **Private**
- **Add README: On** — creates the initial branch.
- Add `.gitignore`: **R**
- License: none required.

Do not fork or copy the entire course repository. If you already created an empty
private repository, use GitHub's **creating a new file** link to add `README.md`
before cloning.

## 3. Clone your private repository as a second project

Again select **File → New Project → Version Control → Git**:

```text
Repository URL:     https://github.com/YOUR_GITHUB_USERNAME/BIOS6301-mywork.git
Project directory:  BIOS6301-mywork
```

Choose the same parent directory as the course clone. Open the root
`BIOS6301-mywork.Rproj`. If needed, use **File → New Project → Existing
Directory** to create the RStudio project in this cloned directory.

Use HTTPS browser authentication from the
[Session 2 preclass guide](course/session02/preclass.qmd).
In this project, `origin` points to your private repository. No instructor remote
is needed. Check the address in each project's Terminal:

```bash
git remote -v
```

## 4. Give course staff access

In your private repository, open **Settings → Collaborators → Add people**.

![GitHub Settings tab](course/session02/images/github-repository-settings.png)

Invite instructor `slzhao` and TA `zongyue.teng@Vanderbilt.Edu`.
Invitations may remain **Pending** until accepted. Keep the repository private.
Personal-repository collaborators receive write access; course staff use access
to review your work.

## 5. Copy only the files you need

After pulling the course materials, copy the assigned starter file or folder
from `BIOS6301-materials/course/` into `BIOS6301-mywork/work/`.
Copy required synthetic data too, preserving the starter's relative paths.
Choose either `.Rmd` or `.qmd`. Edit and Knit/Render the copy with your
**personal** RStudio project open.

For homework, copy its starter into `BIOS6301-mywork/work/homework01/` (or the
specified assignment folder). Follow the homework email-submission instructions;
GitHub provides the reference/backup copy.

In your personal project: **Pull → edit → review → Stage → Commit → Push**.
Pull here receives your own saved work from GitHub, for example from another
computer. It does not update the separate course clone.

Inspect revised starters before copying over any existing answers.

## If you used the earlier combined setup

Keep the old folder and repository intact until your answers are backed up.
Create a fresh course clone separately. Your existing personal repository can
still hold your work; it no longer needs course updates merged into it.
Ask the TA to help move only your work to an independent private repository if
you want a clean start. Do not delete history or overwrite answers to migrate.

## Help and sources

The [Session 2 lab](course/session02/lab.qmd) walks through both projects.
Use the preclass guide for authentication problems. Preserve local work and ask
for help if a Push is rejected; do not force Push.

Screenshots: [Posit RStudio guide](https://docs.posit.co/ide/user/ide/guide/tools/version-control.html),
[GitHub repository creation](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-new-repository),
and [GitHub collaborator access](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/repository-access-and-collaboration/inviting-collaborators-to-a-personal-repository).
