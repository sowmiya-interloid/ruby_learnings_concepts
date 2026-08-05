password="Sowmiya@123"

if(password.length>=8 &&
    password.match?(/[a-z]/)
    password.match?(/[A-Z]/)
    password.match?(/[@#$%^&*!]/)
    password.match?(/\d/))

    p "Password Valid"

else

    p "Password Not Valid"
end