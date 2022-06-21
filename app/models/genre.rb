class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '肉料理' },
    { id: 3, name: '魚料理' },
    { id: 4, name: '副菜' },
    { id: 5, name: 'お菓子' },
    { id: 6, name: '汁物' },
    { id: 7, name: '煮込み' },
    { id: 8, name: '低温調理' },
    { id: 9, name: '飲み物' },
    { id: 10, name: 'お菓子' },
    { id: 11, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :recipes
  end