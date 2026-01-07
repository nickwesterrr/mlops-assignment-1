# Assignment 1

**Name:** Nick Wester

**Student Number:** 15757579

**Group:** D


## Question 1: First Contact with Snellius (Cluster Access)

### 1. What was the exact command you used to connect, and which login node (int1, int2, etc.) did you land on? Provide a screenshot of your terminal showing the welcome message.

Before I started with the assignment, I already configured the SSH key, so I did not need to type my password. I used the command "ssh scur2401@snellius.surf.nl" and I landed on login node "int5":

![](/images/screenshot-cmd-ssh.png)

### 2. Describe at least one problem or unclear issue you encountered during the connection process.

I did not get any problems during the connection process, because I already had my SSH key configured. When I was configuring the SSH key, I also did not encounter any problems.

### 3. However, if you encountered no errors at all, explain in detail:

* What SSH client you used (and its version):

I ran "ssh -vvv scur2401@snellius.surf.nl" to get the version of my SSH client. I am using "OpenSSH_for_Windows_9.5p2, LibreSSL 3.8.2".

* Whether you had prior experience with SSH:

Yes, I did it once more with another project at the university, but that is a while ago.

* What preemptive steps you took to avoid common errors:

I already generated my SSH key before starting with the assignment and I added the key to my SSH keys in the CUA User Portal.

The output for "ssh -vvv scur2401@snellius.surf.nl" was realy long, so I used a LLM to only show the relevant parts:

```text
OpenSSH_for_Windows_9.5p2, LibreSSL 3.8.2
debug1: Reading configuration data C:\\Users\\nick9/.ssh/config
debug1: Applying options for snellius.surf.nl
debug2: resolving "snellius.surf.nl" port 22
debug1: Connecting to snellius.surf.nl [145.136.63.191] port 22.
debug1: Connection established.

debug1: identity file C:\\Users\\nick9/.ssh/id_rsa type 0
debug1: identity file C:\\Users\\nick9/.ssh/id_ed25519 type 3

debug1: Authenticating to snellius.surf.nl:22 as 'scur2401'

debug3: record_hostkey: found key type ED25519 in file C:\\Users\\nick9/.ssh/known_hosts
debug1: Host 'snellius.surf.nl' is known and matches the ED25519 host key.

debug1: Will attempt key: C:\\Users\\nick9/.ssh/id_rsa
debug1: Will attempt key: C:\\Users\\nick9/.ssh/id_ed25519

debug1: Offering public key: C:\\Users\\nick9/.ssh/id_ed25519
debug1: Server accepts key: C:\\Users\\nick9/.ssh/id_ed25519
Authenticated to snellius.surf.nl ([145.136.63.191]:22) using "publickey".

debug1: Entering interactive session.
```


## Question 2: Environment Setup (Modules & Virtual Environments)

### 1. Provide the exact sequence of commands you ran to set up your environment, you can use the history command for this. Include module loads and venv creation. What is the full path to your virtual environment?

I followed along with the syllabus to set up my environment. I decided to use uv as my virtual environment tool. First, the full path to my virtual environment was "/home/scur2401/my_venv". However, later I made a repository folder, added the assignment .md file to it and moved my virtual environment to there and started using VS Code. I also loaded the modules in the new repository and installed torch in there. The new path is "/home/scur2401/mlops-assignment-1/venv".

![](/images/screenshot-cmd-env-setup.png)
![](/images/screenshot-vsc-terminal-env-setup2.png)

### 2. When you ran pip install torch, describe what happened. Specifically:

* How long did the installation take (approximately)?

I installed PyTorch using "uv pip install torch" and the first attempt it took approximately 1 minute in total. The second time I installed it in my repository folder, it took approximately 5 seconds.

![](/images/screenshot-cmd-torch.png)
![](/images/screenshot-vsc-terminal-torch.png)

* Did you encounter any warnings about "pip version" or "dependency conflicts"?

No

* What was the size of your venv folder after installation?

The size of my venv folder after installation was 6.5G.

### 3. Describe a mistake or unexpected behavior you encountered.

I did not encounter any mistakes or unexpected behavior while setting up my environment. However, changing the folder structure and using the VS Code terminal caused some confusion, because I had to load the modules and install torch again in the new folder.

### 4. Run the following command and paste the output:
```bash
python -c "import torch; print('PyTorch:', torch.__version__); print('CUDA available:', torch.cuda.is_available())"
```
Explain whether this is expected given where you ran the command.

Output:

![](/images/screenshot-cmd-python-command.png)

This output is expected because it shows the version of Pytorch that I installed and it also shows that CUDA is not available. This is because I am using a login node that does not have access to a GPU.


## Question 3: Version Control Setup (Git & GitHub)

### 1. Provide the URL of your GitHub repository

GitHub URL: https://github.com/nickwesterrr/mlops-assignment-1

### 2. When you first tried to git push, what authentication method did you use (HTTPS with token, SSH key, or GitHub CLI)? Describe any errors you encountered during authentication setup.

First, I tried to authenticate using HTTPS with my username and password, but that was not supported by GitHub. So, I created a SSH key and added it to my GitHub account. After this, I could push my code without any problems.

![](/images/screenshot-cmd-gh-auth-error.png)

### 3. Show the contents of your .gitignore file. Then answer:

My .gitignore file, that I just copied from the syllabus:
```text
# 1. Ignore Python Cache
__pycache__/
*.pyc

# 2. Ignore Virtual Environments
venv/
.env

# 3. Ignore Data and Models (Too large for Git)
data/
experiments/results/
*.pt
*.ckpt
*.h5

# 4. Ignore Secrets (Security Risk!)
.env
keys.json
wandb/
```

* What are important things to include in the .gitignore?

Virtual environments, data, models and secrets are important, because they can be really large in size or can contain sensitive information.

* Should you include information about how to access Snellius and load the necessary software in your README.md?

For now maybe not, because this is for my own assignment but, otherwise it should not be too specific for my own use case. It should be general enough for other users to understand how load the necessary software, but it should not contain too detailed information about how to accces Snellius.
