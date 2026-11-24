"""Build the Typst HTML wiki with the Typst Python package."""

from __future__ import annotations

from pathlib import Path

import typst

ROOT = Path(__file__).resolve().parent
SOURCE = ROOT / "docs.typ"
DIST = ROOT / "dist"
CHAPTERS = {
    "getting-started": ROOT / "chapters" / "getting-started.typ",
    "lab-services": ROOT / "chapters" / "lab-services.typ",
    "tools": ROOT / "chapters" / "tools.typ",
    "workflows": ROOT / "chapters" / "workflows.typ",
}


def main() -> None:
    DIST.mkdir(parents=True, exist_ok=True)
    for obsolete in DIST.glob("0[1-4]-*.html"):
        obsolete.unlink()
    pages = {"index": SOURCE, **CHAPTERS}
    for name, source in pages.items():
        output = DIST / f"{name}.html"
        typst.compile(
            input=str(source),
            output=str(output),
            root=str(ROOT),
            format="html",
        )
        print(f"Built {output.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
