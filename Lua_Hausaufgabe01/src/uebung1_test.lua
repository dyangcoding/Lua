-- Objektorientierte Softwareentwicklung, Sommersemester 2015
-- Uebung 1


-- Hier steht der Name der LOS-Implementierung
-- Die Datei 'LOS_gruppeXY.lua' muss im gleichen Verzeichnis wie diese Datei liegen.
-- 'XY' bitte durch die eigene Gruppennummer ersetzen!

require("LOS_gruppe04")


-- uncomment the enum 

-- Aufzählungstyp

--Enum{ 'Gender', {'male', 'female', default = 'undetermined'} }



-- Klasse, Standard-Konstruktor, Methode ohne Parameter

Class{'Cat'}

function Cat:meow( )
  print("Meow!")
end


kitty = Cat:create( )
kitty:meow()								--> Meow!
print()



-- Attribute, überschriebener Konstruktor, Methode mit Parameter

Class{'Dog', name = String, friend = Cat, gender = Gender}

function Dog:create( n )
  self.name = n
end

function Dog:setFriend( f )
  self.friend = f
end

function Dog:bark( )
  print( self.name .. " (" .. tostring(self.gender) .. "): Woof!" )
  if self.friend then
    self.friend:meow()
  end
end



-- Aufruf der Methoden (mit gewünschter Ausgabe)

puppy = Dog:create("Puppy")
puppy:bark()							--> Puppy (undetermined): Woof!
print()

puppy:setFriend(kitty)
puppy.gender = Gender.male
puppy:bark()							--> Puppy (male): Woof!
										--> Meow!
print()



-- Für die folgenden Anweisungen sollen jeweils unterschiedliche, selbst-definierte Fehlermeldungen ausgegeben werden.
-- (Zum Testen muss '--' in der jeweiligen Zeile entfernt werden.)

-- Unbekannte Methode:
--			puppy:dance()

-- Falscher Typ:
--			puppy.name = false

-- Ungültiger Typ:
--			Class{"Mouse", enemy = kitty}
