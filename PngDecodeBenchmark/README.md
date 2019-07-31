## iOS Simulator - 2018 Mac mini, Core i7 8700B

| Encode Method  | Mean | Width | Height | Size (on disk)  |
|-------------------- |------------:|-------:|-------:|------:|
| Baseline |  22,252 μs | 1024px | 1024px |  37kb |
| ImageMagick | 4,920 μs | 1024px | 1024px |  14kb |
| ImageOptim | 5,692 μs |  1024px | 1024px |   9kb |
| ImageMagick Channel |  5,014 μs | 1024px | 1024px |  14kb |
| Trimmed ImageOptim | 1,414 μs | 1010px |   62px |   9kb |
| Trimmed Pixelmator | 1,033 μs | 1010px |   62px |  18kb |
| Trimmed Imagemagick | 887 μs | 1010px |   62px |  11kb |

## 12.9" iPad Pro 3rd Generation (2018) - iOS 12.4

| Encode Method  | Mean | Width | Height | Size (on disk)  |
|-------------------- |------------:|-------:|-------:|------:|
| Baseline | 12,752 μs  | 1024px | 1024px |  37kb |
| ImageMagick | 2,627 μs  | 1024px | 1024px |  14kb |
| ImageOptim | 5,987 μs |  1024px | 1024px |   9kb |
| ImageMagick Channel | 4,970 μs  | 1024px | 1024px |  14kb |
| Trimmed ImageOptim | 2,017 μs  | 1010px |   62px |   9kb |
| Trimmed Pixelmator | 840 μs | 1010px |   62px |  18kb |
| Trimmed Imagemagick | 802 μs | 1010px |   62px |  11kb |

- Baseline is direct output from bmfont generator (https://www.angelcode.com/products/bmfont/)
- Raw is raw RGBA32 pixel stream
