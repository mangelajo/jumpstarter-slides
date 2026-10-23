import { defineConfig } from 'vite'

// slidev >= 52.17.2 added a `slide-import-guard` that runs with `server.fs.strict: true`.
// It resolves `public/` assets via realpath, so symlinked images (this repo shares
// `common/images` into each deck's `public/` via symlinks) "escape" the public dir
// and fail the guard. Disabling strict mode restores the pre-52.17.2 behavior.
export default defineConfig({
  server: {
    fs: {
      strict: false
    }
  }
})
