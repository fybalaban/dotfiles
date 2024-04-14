function wifi --description 'alias wifi nmcli radio wifi'
  bash "$HOME/scripts/wireless.sh" wifi $argv        
end
