class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '野菜類' },
    { id: 3, name: 'お肉類' },
    { id: 4, name: '魚介類' },
    { id: 5, name: 'パン類' },
    { id: 6, name: '麺類' },
    { id: 7, name: 'スープ・汁物類' },
    { id: 8, name: '揚げ物類' },
    { id: 9, name: 'ご飯物' },
    { id: 10, name: '卵料理' },
    { id: 11, name: '豆腐料理' },
    { id: 12, name: '鍋料理' },
    { id: 13, name: 'お菓子類' },
    { id: 14, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :recipes

end
