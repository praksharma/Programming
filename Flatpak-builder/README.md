# Build apps with flatpak
Link: https://docs.flatpak.org/en/latest/first-build.html

Download flatpak-builder: 
```sh
sudo apt install flatpak-builder
```

Install runtime:
```sh
flatpak install flathub org.freedesktop.Platform/x86_64/23.08
```
  
1. Build
The build directory path shouldn't contains any space.

```sh
flatpak-builder build-dir org.flatpak.Hello.yml
```
This command will build each module that is listed in the manifest and install it to the `/app` subdirectory, inside the `build-dir` directory.

2. Create a local repo.

This command can be used to rebuild the app after a cache clean.
```sh
flatpak-builder --repo=repo --force-clean build-dir org.flatpak.Hello.yml
```

This will create a new folder `repo`.

3. Add a local flatpak repo.

```sh
flatpak remote-add --user --no-gpg-verify local-repo repo   
```
Delete local flatpak repo to rerun the test:
```sh
flatpak remote-delete --user local-repo
flatpak remote-add --user --no-gpg-verify local-repo repo   
```

This will add a local flatpak repo as follows.
```sh
Name       Options
flathub    system
flathub    user
local-repo user,no-gpg-verify
```
Now install the app from the local repo.
```sh
flatpak install --user local-repo org.flatpak.Hello
```
You should see the typical output.
```sh
╰─ flatpak install --user local-repo org.flatpak.Hello                       ─╯

Looking for matches…


        ID                   Branch    Op    Remote       Download
 1. [✓] org.flatpak.Hello    master    i     local-repo   1.0 kB / 569 bytes

Installation complete.
```

2. Test

Run build.
```sh
flatpak run org.flatpak.Hello
```

You should hopefully see this output.
```sh
╰─ flatpak run org.flatpak.Hello                                             ─╯
Hello world, from a sandbox
```
