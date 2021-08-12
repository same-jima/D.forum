class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'イラスト' },
    { id: 3, name: 'ロゴデザイン' },
    { id: 4, name: 'モデリング' },
    { id: 5, name: 'WEBデザイン' },
    { id: 6, name: '写真' },
    { id: 7, name: '画像加工' },
    { id: 8, name: '動画' },
    { id: 9, name: 'アニメーション' },
    { id: 10, name: '小説' },
    { id: 11, name: 'シナリオ' },
    { id: 12,name: '文章編集' },
    { id: 13, name: 'コピー・フレーズ' },
    { id: 14, name: 'キャラクターグッズ' },
    { id: 15, name: 'IT・プログラミング' },
    { id: 16, name: '音楽・BGM' },
    { id: 17, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

end