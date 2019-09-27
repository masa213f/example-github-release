# github-release-sample

CircleCI で GitHub の自動リリースをするサンプルです。

`v<version>`の形式でgitのtagを打ち、GitHubにPushすると、CircleCIによってアーカイブの作成及びリリースを行います。
また、CIの中に[`semver`コマンド](semver-command)を使用し、バージョン番号が"[Semantic Versioning 2.0.0][semver-v2-spec]"に従っているかをチェックしています。

詳細は[CircleCIのコンフィグ](./.circleci/config.yml)を参照のこと。

[semver-v2-spec]: https://semver.org/
[semver-command]: https://github.com/masa213f/semver
