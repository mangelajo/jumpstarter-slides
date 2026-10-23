import { defineMermaidSetup } from '@slidev/types'
// Must match @slidev/client's import path so packs register on the same Mermaid instance.
import mermaid from 'mermaid/dist/mermaid.esm.mjs'
import { jumpstarterIcons } from './jumpstarter-icons'

mermaid.registerIconPacks([
  {
    name: 'jumpstarter',
    icons: jumpstarterIcons,
  },
  {
    name: 'logos',
    loader: () => import('@iconify-json/logos').then(m => m.icons),
  },
  {
    name: 'mdi',
    loader: () => import('@iconify-json/mdi').then(m => m.icons),
  },
  {
    name: 'simple-icons',
    loader: () => import('@iconify-json/simple-icons').then(m => m.icons),
  },
])

export default defineMermaidSetup(() => ({
  theme: 'base',
  themeVariables: {
    primaryColor: '#f0f0f0',
    primaryTextColor: '#333333',
    primaryBorderColor: '#7e7e7e',
    lineColor: '#757575',
    secondaryColor: '#ffffff',
    tertiaryColor: '#f5f5f5',
  },
}))
