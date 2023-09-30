Ruby Hash操作でのメモリ調査
===


- `Hash#all?`の実行時に配列が生成されていて、メモリ使用量が増えた上に少し遅い
- `Hash#any?`は最適化がされている
  - https://github.com/ruby/ruby/commit/d738e3e15533e0f500789faaedcef9ed9ca362b9
  - https://github.com/ruby/ruby/commit/a9770bac6375c9d4ff8ba8bb1842841aec7c59e3


### 確認コード実行

```
❯ bundle install

❯ bundle exec ruby memory_test.rb

❯ bundle exec ruby bench_test.rb
```

- 関連
  - https://zenn.dev/universato/articles/20201210-z-ruby#hash
  - https://github.com/weshatheleopard/rubyXL/issues/267