import js from "@eslint/js";
import sonarjs from "eslint-plugin-sonarjs";
import { defineConfig, globalIgnores } from "eslint/config";
import globals from "globals";
import tseslint from "typescript-eslint";

export default defineConfig([
  globalIgnores(["lib/**/*", "lib_test/**/*"]),
  js.configs.recommended,
  tseslint.configs.recommended,
  {
    plugins: { sonarjs },
    languageOptions: {
      globals: { ...globals.node },
    },
    rules: {
      quotes: ["error", "double"],
      "sonarjs/cognitive-complexity": ["error", 15],
    },
  },
]);
