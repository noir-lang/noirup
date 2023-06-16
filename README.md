# `noirup`

Update or revert to a specific Nargo branch with ease.

## Installing

```sh
curl -L https://raw.githubusercontent.com/noir-lang/noirup/main/install | bash
```

## Usage

To install the **nightly** version:

```sh
noirup
```

To install a specific **version** (in this case the `nightly` version):

```sh
noirup --version nightly
```

To install a specific **branch** (in this case the `release/0.1.0` branch's latest commit):

```sh
noirup --branch release/0.1.0
```

To install a **fork's main branch** (in this case `tomafrench/noir`'s main branch):

```sh
noirup --repo tomafrench/noir
```

To install a **specific branch in a fork** (in this case the `patch-10` branch's latest commit in `tomafrench/noir`):

```sh
noirup --repo tomafrench/noir --branch patch-10
```

To install from a **specific Pull Request**:

```sh
noirup --pr 367
```

To install from a **specific commit**:

```sh
noirup -C 20048e7
```

To install a local directory or repository (e.g. one located at `~/git/noir`, assuming you're in the home directory)

##### Note: --branch, --repo, and --version flags are ignored during local installations.

```sh
noirup --path ./git/noir
```

---

**Tip**: All flags have a single character shorthand equivalent! You can use `-v` instead of `--version`, etc.

---

## Github Action

This action is in early development and so will likely experience breaking changes. It's recommended to pin to a particular tagged version.

---

Noirup is also available as a GitHub action to allow easy installation of the Noir toolchain using noirup.

<br>

## Example workflow

```yaml
name: test suite
on: [push, pull_request]

jobs:
  test:
    name: nargo test
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: noir-lang/noirup@v0.1.2
        with:
          toolchain: 0.6.0
      - run: nargo test
```

<br>

## Inputs

All inputs are optional.

<table>
<tr>
  <th>Name</th>
  <th>Description</th>
</tr>
<tr>
  <td><code>version</code></td>
  <td>
    Noirup toolchain version e.g. <code>0.3.2</code>. Defaults to the latest stable release.
  </td>
</tr>
</table>

<br>
