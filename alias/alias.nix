{
  # Base git 
  g = "git";

  # git clone
  gcl = "git clone";

  # git pull / git push
  gl = "git pull";
  gplr = "git pull --rebase";
  gplum = "git pull upstream master";

  gp = "git push";
  gput = "git push --tags";
  gpuf = "git push --force";
  gpuu = "git push --set-upstream";
  gpuo = "git push origin";
  gpuom = "git push origin master";
  gpuar = "git remote | xargs -L1 git push";

  gpp = "git pull && git push";

  # git fetch
  gf = "git fetch --all --prune";
  gft = "git fetch --all --prune --tags";
  gfv = "git fetch --all --prune --verbose";
  gftv = "git fetch --all --prune --tags --verbose";
  gfr = "git fetch && git rebase";

  # git add / git rm / git mv
  ga = "git add";
  gap = "git add --patch";
  gall = "git add --all";
  gai = "git add --interactive";
  gau = "git add --update";

  grm = "git rm";
  gmv = "git mv";

  # git status / git diff
  gs = "git status";
  gss = "git status --short";
  gd = "git diff";
  gdw = "git diff --word-diff";
  gds = "git diff --staged";
  gdws = "git diff --word-diff --staged";
  gdv = "git diff -w \"\$@\" | vim -R -";

  # git commit
  gc = "git commit --verbose";
  gcam = "git commit --verbose --amend";
  gca = "git commit --verbose --all";
  gcm = "git commit --verbose -m";
  gci = "git commit --interactive";

  # git stash
  gst = "git stash";
  gstpu = "git stash push";
  gstpo = "git stash pop";
  gstd = "git stash drop";
  gstl = "git stash list";

  # git reset / git clean
  grst = "git reset";
  gnuke = "git reset --hard && git clean -d --force -x";

  gclean = "git clean -d --force";

  # git branch
  gb = "git branch";
  gba = "git branch --all";
  gbt = "git branch --track";
  gbm = "git branch --move";
  gbdel = "git branch --delete --force";

  # git checkout
  gco = "git checkout";
  gcob = "git checkout -b";
  gct = "git checkout --track";

  # git cherrypick
  gcp = "git cherry-pick";
  gcpa = "git cherry-pick --abort";
  gcpc = "git cherry-pick --continue";

  # git merge / git rebase
  gm = "git merge";
  gma = "git merge --abort";
  gmc = "git merge --continue";

  grb = "git rebase";
  grba = "gir rebase --abort";
  grbc = "git rebase --continue";
  grbi = "git rebase --interactive";

  # git tag
  gt = "git tag";
  gta = "git tag --annotate";
  gtd = "git tag --delete";
  gtl = "git tag --list";

  # git log
  gl = "git log --graph --pretty = format:\"%C(yellow)%h%Creset%C(green)%d%Creset %s %C(red)<%an> %C(cyan)(%cr)%Creset\" --abbrev-commit";
  gls = "gl --stat";
  gsl = "git shortlog --email";
  gsls = "git shortlog --email --summary --numbered";

  # git remote
  gr = "git remote";
  grv = "git remote -v";
  gra = "git remote add";

  # git bisect
  gbs = "git bisect";
  gbsb = "git bisect bad";
  gbsg = "git bisect good";
  gbsr = "git bisect reset";
  gbss = "git bisect start";

  # Misc
  gignore = "git update-index --assume-unchanged";


  # Terraform
  "tf" = "terraform";
  "tfa" = "terraform apply";
  "tfc" = "terraform console";
  "tfd" = "terraform destroy";
  "tff" = "terraform fmt";
  "tfg" = "terraform graph";
  "tfim" = "terraform import";
  "tfin" = "terraform init";
  "tfo" = "terraform output";
  "tfp" = "terraform plan";
  "tfpr" = "terraform providers";
  "tfr" = "terraform refresh";
  "tfsh" = "terraform show";
  "tft" = "terraform taint";
  "tfut" = "terraform untaint";
  "tfv" = "terraform validate";
  "tfw" = "terraform workspace";
  "tfs" = "terraform state";
  "tffu" = "terraform force-unlock";
  "tfwst" = "terraform workspace select";
  "tfwsw" = "terraform workspace show";
  "tfssw" = "terraform state show";
  "tfwde" = "terraform workspace delete";
  "tfwls" = "terraform workspace list";
  "tfsls" = "terraform state list";
  "tfwnw" = "terraform workspace new";
  "tfsmv" = "terraform state mv";
  "tfspl" = "terraform state pull";
  "tfsph" = "terraform state push";
  "tfsrm" = "terraform state rm";
  "tfay" = "terraform apply -auto-approve";
  "tfdy" = "terraform destroy -auto-approve";
  "tfinu" = "terraform init -upgrade";
  "tfpde" = "terraform plan --destroy";

}
