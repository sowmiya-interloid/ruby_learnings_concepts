require "json"

class Storage

    def self.save(library,file)
        data = {
            books:[],
            members:[]
        }

        library.books.each do |book|
            data[:books] << {
                id: book.id,
                title: book.title,
                author: book.author,
                available: book.available?
            }
        end



        library.members.each do |member|
            data[:members] << {
                id: member.id,
                name: member.name
            }
        end


        File.write(file,JSON.pretty_generate(data))

        puts "Data Saved Successfully...!!!!!"



    end

end