# lorem --------------------------------------------
lorem_la = R6Class(
  "lorem_la",
  inherit = lorem_init,
  cloneable = FALSE,
  private = list(
    word_list = c(
      'a', 'ab', 'accusamus', 'accusantium', 'ad', 'adipisci', 'alias',
      'aliquam', 'aliquid', 'amet', 'animi', 'aperiam', 'architecto',
      'asperiores', 'aspernatur', 'assumenda', 'at', 'atque', 'aut', 'autem',
      'beatae', 'blanditiis', 'commodi', 'consectetur', 'consequatur',
      'consequuntur', 'corporis', 'corrupti', 'culpa', 'cum', 'cumque',
      'cupiditate', 'debitis', 'delectus', 'deleniti', 'deserunt', 'dicta',
      'dignissimos', 'distinctio', 'dolor', 'dolore', 'dolorem', 'doloremque',
      'dolores', 'doloribus', 'dolorum', 'ducimus', 'ea', 'eaque', 'earum',
      'eius', 'eligendi', 'enim', 'eos', 'error', 'esse', 'est', 'et', 'eum',
      'eveniet', 'ex', 'excepturi', 'exercitationem', 'expedita', 'explicabo',
      'facere', 'facilis', 'fuga', 'fugiat', 'fugit', 'harum', 'hic', 'id',
      'illo', 'illum', 'impedit', 'in', 'incidunt', 'inventore', 'ipsa',
      'ipsam', 'ipsum', 'iste', 'itaque', 'iure', 'iusto', 'labore',
      'laboriosam', 'laborum', 'laudantium', 'libero', 'magnam', 'magni',
      'maiores', 'maxime', 'minima', 'minus', 'modi', 'molestiae',
      'molestias', 'mollitia', 'nam', 'natus', 'necessitatibus', 'nemo',
      'neque', 'nesciunt', 'nihil', 'nisi', 'nobis', 'non', 'nostrum',
      'nulla', 'numquam', 'occaecati', 'odio', 'odit', 'officia', 'officiis',
      'omnis', 'optio', 'pariatur', 'perferendis', 'perspiciatis', 'placeat',
      'porro', 'possimus', 'praesentium', 'provident', 'quae', 'quaerat',
      'quam', 'quas', 'quasi', 'qui', 'quia', 'quibusdam', 'quidem', 'quis',
      'quisquam', 'quo', 'quod', 'quos', 'ratione', 'recusandae',
      'reiciendis', 'rem', 'repellat', 'repellendus', 'reprehenderit',
      'repudiandae', 'rerum', 'saepe', 'sapiente', 'sed', 'sequi',
      'similique', 'sint', 'sit', 'soluta', 'sunt', 'suscipit', 'tempora',
      'tempore', 'temporibus', 'tenetur', 'totam', 'ullam', 'unde', 'ut',
      'vel', 'velit', 'veniam', 'veritatis', 'vero', 'vitae', 'voluptas',
      'voluptate', 'voluptatem', 'voluptates', 'voluptatibus', 'voluptatum'
    )
  )
)

# file -----------------
file_la = R6Class(
  "file_la",
  inherit = file_init,
  cloneable = FALSE,
  public = list(
    file_name = function(category, extension){
      # :param category: audio|image|office|text|video
      # :param extension: file extension
      if (missing(extension)) {
        extension = self$file_extension(category)
      }
      file = (lorem_la$new())$word()
      return(str_c(file, ".", extension))
    },

    file_path = function(depth = 1, category, extension){
      # :param category: audio|image|office|text|video
      # :param extension: file extension
      # :param depth: depth of the file (depth >= 0)

      file = self$file_name(category, extension)
      path = str_c("/", file)
      for (i in seq(depth)) {
        path = str_c("/", (lorem_la$new())$word(), path)
      }
      return(path)
    }
  )
)

# internet --------------------
internet_la = R6Class(
  "internet_la",
  inherit = internet_en_US,
  cloneable = FALSE,
  public = list(
    slug = function(string) {
      string = ifelse(missing(string),
                      (lorem_la$new())$text(max_nb_chars = 20),
                      string)
      return(private$slugify(string))
    }
  )
)




