# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movies = [{:title => '模式识别与机器学习', :credit => 3, :classhour => 60, :rating => 3,:description =>'主要内容包括统计判别、判别函数、特征选择、句法模式识别、有监督学习、支持向量机、无监督/半监督学习、图模型、集成学习、神经网络与深度学习以及人脸识别案例分析等' },
    	  {:title => '高级软件工程', :credit => 3,:classhour => 60, :rating => 4,:description =>'本课程主要讲解当今软件工程面临的新问题以及为解决这些问题的新技术发展，包括需求工程、软件设计、软件过程、软件质量等。通过本课程的学习，使学生能充分理解当今软件工程的最新发展，并增强实际系统设计的能力'},
    	  {:title => '算法设计与分析',:credit => 3, :classhour => 60, :rating => 5,:description =>'本课程讲授和讨论计算机算法设计的基本思想、设计策略与技巧，算法的空间、时间复杂性分析技术。主要内容有分治策略、贪心算法、动态规划、回溯算法、分枝限界算法等经典算法和NP完全性理论、NP难问题的算法设计等'},
      	  {:title => '数据挖掘', :credit => 2,:classhour => 40, :rating => 4,:description =>'课程包含的主要议题包括：数据挖掘的重要性、特点、应用领域、数据仓库、数据预处理技术、关联规则、分类、预测、聚类、顺序模式、深度学习、大数据挖掘等'},
      	   	 ]

movies.each do |movie|
  Movie.create!(movie)
end





reviews = [{:username => '用户1', :coursename => '模式识别与机器学习', :ratingone => 4, :ratingtwo => 3, :ratingthree => 3, :description => '老师讲的非常好'},
           {:username => '用户2', :coursename => '模式识别与机器学习', :ratingone =>3, :ratingtwo => 5, :ratingthree => 5, :description => '老师给分非常高'},
           {:username => '用户3', :coursename => '模式识别与机器学习', :ratingone =>5, :ratingtwo => 3, :ratingthree =>4, :description => '学习内容特别多'},
           {:username => '用户1', :coursename => '高级软件工程', :ratingone =>5, :ratingtwo => 5, :ratingthree => 5, :description => '老师讲的非常好！'},
           {:username => '用户2', :coursename => '高级软件工程', :ratingone => 4, :ratingtwo => 3, :ratingthree => 3, :description => '老师给分非常高！'},
           {:username => '用户3', :coursename => '高级软件工程', :ratingone => 4, :ratingtwo => 4, :ratingthree => 4, :description => '助教特别帅！'},
           {:username => '用户1', :coursename => '算法设计与分析', :ratingone => 4, :ratingtwo => 3, :ratingthree => 3, :description => '老师讲的非常好'},
           {:username => '用户1', :coursename => '数据挖掘', :ratingone => 4, :ratingtwo => 3, :ratingthree => 3, :description => '老师讲的非常好'},
           {:username => '用户2', :coursename => '数据挖掘', :ratingone => 5, :ratingtwo => 5, :ratingthree => 5, :description => '老师非常幽默'},
        ]

reviews.each do |review|
  Review.create!(review)
end


