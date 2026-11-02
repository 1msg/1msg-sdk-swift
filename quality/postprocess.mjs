import { readFile, readdir, writeFile } from "node:fs/promises";
import { resolve, join } from "node:path";
import { fileURLToPath } from "node:url";
const root = process.argv[2]
  ? resolve(process.argv[2])
  : fileURLToPath(new URL("..", import.meta.url));
/** Apply the pinned upstream Swift producer's slash escaping and AnyCodable JSON conformance repairs. */
async function fix(directory) {
  for (const entry of await readdir(directory, { withFileTypes: true })) {
    const path = join(directory, entry.name);
    if (entry.isDirectory()) await fix(path);
    else if (path.endsWith(".swift")) {
      let text = (await readFile(path, "utf8"))
        .replace(/\\\//g, "/")
        .replaceAll("type[String]", "typeStringArray")
        .replaceAll("type[String: AnyCodable]", "typeObject");
      if (
        entry.name === "Extensions.swift" &&
        !text.includes("extension AnyCodable: JSONEncodable")
      )
        text = text.replace(
          "#endif\n\nextension Bool: JSONEncodable",
          "#endif\n\n#if canImport(AnyCodable)\nextension AnyCodable: JSONEncodable {\n    func encodeToJSON() -> Any {\n        return value\n    }\n}\n#endif\n\nextension Bool: JSONEncodable",
        );
      await writeFile(path, text);
    }
  }
}
await fix(join(root, "Sources"));
