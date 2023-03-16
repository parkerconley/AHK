# This Python code convers the practice log from the old format to the new format.
# 
# Here is the old format:
#
#- [[Protocol: MIDL Skill 09]], Sit 39 - 1h - [[March 7th, 2023]] (Night) - #[[Practice Log]] 
#    Log::
#        1. Lied down.
#        2. Set 1h timer.
#        3. Did practice prep protocol.
#        4. Directed attention to the touch of left hand on yoga mat.
#        5. Directed attention to sounds.
#        6. Fell asleep or got really dull for a few periods of time.
#        7. Timer rang.
#    Success (met progression criteria) / Good (reached to final marker) / Failure mode (didn't reach final marker)::
#        - Failure mode; marker 2.
#    Hindrances::
#        - Habitual Forgetting, Gross Wandering, Directed Thinking, Wandering, Gross Restlessness, Gross Dullness, and Subtle Dullness.
#    _(see pinned message for current practice plan and protocols)_
#
# Here is the new format:
#
#**MIDL Skill 09, Sit 39 - 1h - March 7th, 2023 (Night)**
#
#**Log:**
#1. Lied down.
#2. Set 1h timer.
#3. Did practice prep protocol.
#4. Directed attention to the touch of left hand on yoga mat.
#5. Directed attention to sounds.
#6. Fell asleep or got really dull for a few periods of time.
#7. Timer rang.
#
#**Success (met progression criteria) / Good (reached to final marker) / Failure mode (didn't reach final marker):**
#Failure mode; marker 2.
#
#**Hindrances:**
#Habitual Forgetting, Gross Wandering, Directed Thinking, Wandering, Gross Restlessness, Gross Dullness, and Subtle Dullness.
#
#_(see pinned message for current practice plan and protocols)_

import re

def main():
    with open('practice-log.txt', 'r') as f:
        lines = f.readlines()
    with open('practice-log.txt', 'w') as f:
        for line in lines:
            if line.startswith('- [[Protocol:'):
                f.write('**' + line[12:-3] + '**\r')
            elif line.startswith('    Log::'):
                f.write('\r**Log:**\r')
            elif line.startswith('    Success (met progression criteria) / Good (reached to final marker) / Failure mode (didn\'t reach final marker)::'):
                f.write('\r**Success (met progression criteria) / Good (reached to final marker) / Failure mode (didn\'t reach final marker):**\r')
            elif line.startswith('    Hindrances::'):
                f.write('\r**Hindrances:**\r')
            elif line.startswith('    _(see pinned message for current practice plan and protocols)_'):
                f.write('\r_(see pinned message for current practice plan and protocols)_\r')
            elif line.startswith('        '):
                f.write(re.sub('^        ', '', line))
            else:
                f.write(line)

if __name__ == '__main__':
    main()