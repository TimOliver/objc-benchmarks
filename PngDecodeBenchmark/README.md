
## 12.9" iPad Pro 3rd Generation (2018) - iOS 12.4

| Encode Method  | Mean | Width | Height | Size (on disk)  |
|-------------------- |------------:|-------:|-------:|------:|
| ImageOptim | 5,819 μs |  1024px | 1024px |   9kb |
| ImageMagick convert |  5,195 μs | 1024px | 1024px |  14kb |
| Baseline |  14,054 μs | 1024px | 1024px |  37kb |
| Trimmed ImageOptim | 2,149 μs | 1010px |   62px |   9kb |
| Trimmed Pixelmator | 824 μs | 1010px |   62px |  18kb |
| Trimmed Imagemagick | 802 μs | 1010px |   62px |  11kb |

- Baseline is direct output from bmfont generator (https://www.angelcode.com/products/bmfont/)
- Raw is raw RGBA32 pixel stream
