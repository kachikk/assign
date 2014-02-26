class GenController < ApplicationController
  def index
  end

def story
  location_adj=["alternative-timeline", "tolkeinesque", "neo-noir", "alternate-history", "ancient", "post-apocalyptic", "dystopian", "metaphorical", "anachronistic", "leather-clad", "coal-powered","dragon-filled"]
  location_noun=["America", "Japan", "Soviet Russia", "Steampunk Britian", "Medevial Europe", "Eqyptian empire", "Atlantis", "terraformed Mars", "Antartica", "one-way spaceflight", "Outer Rim world", "set from Road Warrior"]
  protagonist= ["Ferris Buller wannabe", "student of metaphysics", "milquetoast office drone", "schlub with mild <abbr>OCD</abbr>", "farm boy with dreams", "techno-obsessed geek", "brooding loner", "wisecracking mercenary", "idealistic revolutionary", "journeyman inventor", "collector of oddities", "rocketman of the 24th century"]
  discovery=["magic ring", "arcane prophecy", "dusty tome", "crazy old woman", "alien artifact", "enchanted sword", "otherworldly portal", "dream-inducing drug", "encrypted data feed", "time-traveling soldier", "exiled angel", "talking fish"]
  adversary=["a megalomaniacal clown", "a government conspiracy", "a profit-obsessed corporation", "a sneering witch", "supernatural monsters", "computer viruses made real", "murderous robots", "an army led by a sadist", "forces that encourage conformity", "a charismatic politician on the rise", "humanity's selfish nature", "his own insecurity vis-a-vis girls"]
  assistant=["sarcastic female techno-geek", "tomboyish female librarian", "shape-shifting female assassin", "leather-clad female in shades and red leather jacket", "girl who's always loved him for himself", "bookish female scholar with mousy brown hair", "cherubic girl with pigtails and spunk", "female who inexplicably becomes attracted to the damaged protagonist for unstated reasons"]
  inventory=["wacky pet", "electric chainsaw", "closet full of assault rifles and one bullet", "reference book", "meat cleaver", "facility with magic", "condescending tone", "discomfort in formal wear"]
  conflict=["a fistfight atop a cable car", "a daring rescue preceding a giant explosion", "a demonic sacrifice", "a philosophical argument punctuated by violence", "a false victory with the promise of future danger", "the invocation of a spell at the last possible moment", "eternal love professed without irony", "the land restored to health", "authorial preaching through the mouths of the characters", "convoluted nonsense that squanders the readers\'goodwill", "wish-fulfillment solutions to real-world problems", "a cliffhanger for the sake of prompting a series"]
  title_adj=["Time", "Micro", "Aero", "Cosmo", "Reve", "Necro", "Cyber", "Astro", "Psycho", "Steam", "Meta", "Black"]
  title_noun=["punks", "mechs", "noiacs", "opolis", "nauts","phages", "droids", "bots", "blades", "trons", "mancers", "Wars"]
	
  @title="The" + " "+ title_adj[rand(12)] + " " + title_noun[rand(12)] 
  @jane_location_adj = location_adj[rand(12)] 
  @jane_discovery = discovery[rand(12)]
  @jane_assistant= assistant[rand(8)]
  @jane_inventory=inventory[rand(8)]
  
  @story_line = "On the date, " + " "+ random_date + " "+"in"+" "+ generate_identifier(@jane_location_adj ) + " " + location_adj[rand(12)] + " " + location_noun[rand(12)] + " " + "a young" +" "+ protagonist[rand(12)] + " " + "stumbles across" +" "+ generate_identifier(@jane_discovery) + " " + discovery[rand(12)] + " " + "which spurs him into conflict with" + " " + adversary[rand(12)] +","+" "+"by the name of Bob."+ " "+"He and his faithful assistant" + ", " +" "+ generate_identifier(@jane_assistant) +" "+assistant[rand(8)]+ " set out to destroy Bob with the only thing in their inventory" + ", " + " "+generate_identifier(@jane_inventory) + " "+inventory[rand(8)]+" ,"+ " "+"in the greatest battle ever seen" + " " + conflict[rand(12)]+ "."
	    
end
def generate_identifier(words)
	    if words[0] =~ /[aeiou]/
		"an"
		else
		"a"
		end
	end
def random_date
	    story_time = Time.now + rand(1000000)
	    day = story_time.day
	    month = story_time.month
	    year = story_time.year
	    random_date = day.to_s + "/" + month.to_s + "/" + year.to_s
	end
end
