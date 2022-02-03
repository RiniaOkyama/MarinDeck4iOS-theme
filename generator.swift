import Foundation

struct MarinDeckThemes: Codable {
    let version: Int
    let themes: [Theme]

    struct Theme: Codable {
        var id: String // かさらないように。一度変更したら変更しないでください。
        var version: Int
        var title: String // テーマ名
        var description: String = "" // テーマの説明
        var user: String
        var iconUrl: String // テーマのアイコンURL。アイコン作るセンスがなければ設定しないほうがいい。

        var jsUrl: String

        var backgroundColor: MDColor = .init(light: "", dark: "")
        var secondaryBackgroundColor: MDColor = .init(light: "", dark: "")

        var labelColor: MDColor = .init(light: "", dark: "")
        var subLabelColor: MDColor = .init(light: "", dark: "")

        var topBarColor: MDColor = .init(light: "", dark: "")

        var lightStatusBarColor: StatusBarStyle = .darkContent
        var darkStatusBarColor: StatusBarStyle = .lightContent

        var tweetButtonColor: MDColor = .init(light: "", dark: "")

        struct MDColor: Codable {
            let light: String
            let dark: String?
        }

        enum StatusBarStyle: Int, Codable {
            case `default` = 0
            case lightContent = 1
            case darkContent = 3
        }
    }
}

let themes = MarinDeckThemes(version: 1, themes: [
    .init(
        id: "4",
        version: 1,
        title: "Dolce",
        description: "デスクトップ版Discordをモチーフにしたテーマです。明るすぎず暗すぎないDiscordのダークテーマが好きな方におすすめです",
        user: "L1n4r1A a.k.a. るなち✿(人柱)",
        iconUrl: "Dolce-icon",
        jsUrl: ""
    ),
    .init(
        id: "4",
        version: 1,
        title: "Dolce",
        description: "デスクトップ版Discordをモチーフにしたテーマです。明るすぎず暗すぎないDiscordのダークテーマが好きな方におすすめです",
        user: "L1n4r1A a.k.a. るなち✿(人柱)",
        iconUrl: "Dolce-icon",
        jsUrl: ""
    ),
    .init(
        id: "4",
        version: 1,
        title: "Dolce",
        description: "デスクトップ版Discordをモチーフにしたテーマです。明るすぎず暗すぎないDiscordのダークテーマが好きな方におすすめです",
        user: "L1n4r1A a.k.a. るなち✿(人柱)",
        iconUrl: "Dolce-icon",
        jsUrl: ""
    )
])

let jsonValue = try! JSONEncoder().encode(themes)

let json = String(bytes: jsonValue, encoding: .utf8)!

let fileUrl = URL(fileURLWithPath: "v1.json")

try! json.write(to: fileUrl, atomically: false, encoding: .utf8)

print("成功！")